.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 482
    new-instance v0, Lsun/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 480
    check-cast p1, Lsun/security/x509/AVA;

    check-cast p2, Lsun/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    move-result p1

    return p1
.end method

.method public compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .locals 2

    .line 497
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    .line 498
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 501
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

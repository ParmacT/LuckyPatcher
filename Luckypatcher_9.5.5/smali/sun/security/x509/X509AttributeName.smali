.class public Lsun/security/x509/X509AttributeName;
.super Ljava/lang/Object;
.source "X509AttributeName.java"


# static fields
.field private static final SEPARATOR:C = '.'


# instance fields
.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    const/16 v0, 0x2e

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    iput-object p1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    return-object v0
.end method

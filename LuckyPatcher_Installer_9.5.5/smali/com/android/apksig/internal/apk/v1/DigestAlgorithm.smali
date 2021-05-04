.class public final enum Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;
.super Ljava/lang/Enum;
.source "DigestAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v1/DigestAlgorithm$StrengthComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

.field public static BY_STRENGTH_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SHA1:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

.field public static final enum SHA256:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;


# instance fields
.field private final mJcaMessageDigestAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    const/4 v1, 0x0

    const-string v2, "SHA1"

    const-string v3, "SHA-1"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->SHA1:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    .line 29
    new-instance v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    const/4 v2, 0x1

    const-string v3, "SHA256"

    const-string v4, "SHA-256"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    .line 24
    sget-object v4, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->SHA1:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    .line 45
    new-instance v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm$StrengthComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm$StrengthComparator;-><init>(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm$1;)V

    sput-object v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->BY_STRENGTH_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->mJcaMessageDigestAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;
    .locals 1

    .line 24
    const-class v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    return-object v0
.end method


# virtual methods
.method getJcaMessageDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->mJcaMessageDigestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

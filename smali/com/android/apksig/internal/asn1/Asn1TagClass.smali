.class public final enum Lcom/android/apksig/internal/asn1/Asn1TagClass;
.super Ljava/lang/Enum;
.source "Asn1TagClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/apksig/internal/asn1/Asn1TagClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v1, 0x0

    const-string v2, "UNIVERSAL"

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    .line 21
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v2, 0x1

    const-string v3, "APPLICATION"

    invoke-direct {v0, v3, v2}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    .line 22
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v3, 0x2

    const-string v4, "CONTEXT_SPECIFIC"

    invoke-direct {v0, v4, v3}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    .line 23
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v4, 0x3

    const-string v5, "PRIVATE"

    invoke-direct {v0, v5, v4}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    .line 29
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v5, 0x4

    const-string v6, "AUTOMATIC"

    invoke-direct {v0, v6, v5}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/android/apksig/internal/asn1/Asn1TagClass;

    .line 19
    sget-object v7, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    aput-object v7, v6, v1

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    aput-object v1, v6, v2

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    aput-object v1, v6, v3

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/android/apksig/internal/asn1/Asn1TagClass;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1TagClass;
    .locals 1

    .line 19
    const-class v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    return-object p0
.end method

.method public static values()[Lcom/android/apksig/internal/asn1/Asn1TagClass;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/asn1/Asn1TagClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/asn1/Asn1TagClass;

    return-object v0
.end method

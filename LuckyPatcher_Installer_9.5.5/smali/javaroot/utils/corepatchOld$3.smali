.class final Ljavaroot/utils/corepatchOld$3;
.super Ljava/util/ArrayList;
.source "corepatchOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavaroot/utils/corepatchOld;->ʻ(Ljava/util/ArrayList;[Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3206
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "boolean com.android.org.conscrypt.OpenSSLSignature.engineVerify(byte[])"

    .line 3207
    invoke-virtual {p0, v0}, Ljavaroot/utils/corepatchOld$3;->add(Ljava/lang/Object;)Z

    return-void
.end method

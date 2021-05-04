.class public Lsun/security/pkcs/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algid:Lsun/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 98
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 69
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Lsun/security/util/DerValue;

    .line 73
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 74
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 76
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_2

    .line 80
    aget-object v0, v1, v3

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 81
    aget-object v0, v1, v3

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    aget-object v0, v1, v4

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 86
    aget-object v0, v1, v4

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "encryptedData field overrun"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "encryptionAlgorithm field overrun"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrun, bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lsun/security/pkcs/EncryptedPrivateKeyInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 145
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    .line 146
    check-cast p1, Lsun/security/pkcs/EncryptedPrivateKeyInfo;

    .line 147
    invoke-virtual {p1}, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object p1

    .line 149
    array-length v3, v1

    array-length v4, p1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    .line 151
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 152
    aget-byte v4, v1, v3

    aget-byte v5, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :catch_0
    return v2
.end method

.method public getAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    .line 105
    iget-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 124
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 127
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 130
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v2, 0x30

    .line 133
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 134
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    .line 136
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 1

    .line 112
    iget-object v0, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 169
    aget-byte v2, v2, v0

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

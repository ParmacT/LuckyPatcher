.class public Lsun/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# instance fields
.field private ber:[B

.field private certId:[Lsun/security/pkcs/ESSCertId;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->ber:[B

    .line 88
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 91
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SigningCertificateInfo;->parse([B)V

    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 110
    iget-byte p1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne p1, v1, :cond_2

    .line 115
    iget-object p1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object p1

    .line 116
    array-length v2, p1

    new-array v2, v2, [Lsun/security/pkcs/ESSCertId;

    iput-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 118
    iget-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    new-instance v5, Lsun/security/pkcs/ESSCertId;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Lsun/security/pkcs/ESSCertId;-><init>(Lsun/security/util/DerValue;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result p1

    if-lez p1, :cond_1

    .line 123
    iget-object p1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object p1

    .line 124
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 111
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad encoding for signingCertificate"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\n"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 98
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n]"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

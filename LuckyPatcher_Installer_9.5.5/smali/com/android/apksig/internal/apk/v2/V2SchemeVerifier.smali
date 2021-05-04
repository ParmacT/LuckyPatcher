.class public abstract Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;
.super Ljava/lang/Object;
.source "V2SchemeVerifier.java"


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/cert/CertificateFactory;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object v1, p2

    .line 252
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 254
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    iput-object v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signedData:[B

    .line 258
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 259
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 264
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/2addr v7, v5

    .line 267
    :try_start_0
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 268
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 269
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    .line 270
    iget-object v10, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v11, v9, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v10

    if-nez v10, :cond_0

    .line 275
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v6

    invoke-virtual {p2, v8, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    invoke-direct {v9, v10, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 285
    :cond_1
    iget-object v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move/from16 v2, p6

    move/from16 v7, p7

    .line 294
    :try_start_1
    invoke-static {v4, v2, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException; {:try_start_1 .. :try_end_1} :catch_9

    .line 300
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v7, 0x2

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    .line 301
    iget-object v8, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 303
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 305
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/spec/AlgorithmParameterSpec;

    .line 306
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 310
    :try_start_2
    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v12, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 317
    :try_start_3
    invoke-static {v9}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 318
    invoke-virtual {v9, v11}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v10, :cond_3

    .line 320
    invoke-virtual {v9, v10}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 322
    :cond_3
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    invoke-virtual {v9, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 324
    iget-object v4, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->signature:[B

    .line 325
    invoke-virtual {v9, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v9

    if-nez v9, :cond_4

    .line 326
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v8, v2, v6

    invoke-virtual {p2, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 329
    :cond_4
    iget-object v9, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v4

    move-object/from16 v9, p3

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 333
    :goto_2
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v0, v3, v5

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v0

    .line 313
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_5
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 341
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 342
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v0, -0x1

    .line 346
    :goto_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v9, v0, 0x1

    .line 348
    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    move-object v10, p1

    .line 351
    :try_start_4
    invoke-static {v0, p1}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object v11
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5

    .line 364
    new-instance v12, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v12, v11, v0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 365
    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v9

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 353
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 355
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    add-int/2addr v9, v5

    .line 356
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v2, v3, v7

    .line 353
    invoke-virtual {p2, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 368
    :cond_6
    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_7
    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 376
    :try_start_5
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 378
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught an exception encoding the public key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 380
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 382
    :goto_4
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_8

    .line 383
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v7, [Ljava/lang/Object;

    .line 385
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 386
    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 383
    invoke-virtual {p2, v2, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 392
    :goto_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/2addr v0, v5

    .line 395
    :try_start_6
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 397
    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 398
    iget-object v9, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    new-instance v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-direct {v10, v4, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    .line 402
    :catch_7
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 407
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    iget-object v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    .line 409
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->getAlgorithmId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 411
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    iget-object v3, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 413
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 416
    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 417
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 426
    :cond_c
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 427
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    .line 428
    :goto_8
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/2addr v3, v5

    .line 432
    :try_start_7
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 434
    invoke-static {v4}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 435
    iget-object v10, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->additionalAttributes:Ljava/util/List;

    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;

    invoke-direct {v11, v9, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;-><init>(I[B)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v10, -0x41100ff3

    if-eq v9, v10, :cond_d

    .line 450
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v6

    invoke-virtual {p2, v4, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_8

    .line 440
    :cond_d
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 441
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 445
    :cond_e
    sget-object v9, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    .line 446
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v5

    .line 445
    invoke-virtual {p2, v9, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_7
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    .line 453
    :catch_8
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v5, [Ljava/lang/Object;

    .line 454
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 453
    invoke-virtual {p2, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v9, v7, [Ljava/lang/Object;

    iget v10, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    .line 465
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v2, v9, v5

    .line 463
    invoke-virtual {p2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    move-object/from16 v3, p4

    goto :goto_9

    :cond_11
    return-void

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 297
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {p2, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v0, p6

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 193
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    const-string v3, "X.509"

    .line 200
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    .line 205
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v12, v4, 0x1

    .line 208
    new-instance v13, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v13}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    .line 210
    iput v4, v13, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    .line 211
    iget-object v4, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :try_start_2
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v5, v3

    move-object v6, v13

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 214
    invoke-static/range {v4 .. v11}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;II)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v12

    goto :goto_0

    .line 224
    :catch_0
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 190
    :catch_2
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void
.end method

.method public static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    move-object v0, p1

    .line 100
    new-instance v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v1, 0x2

    invoke-direct {v10, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v1, 0x7109871a

    move-object v2, p2

    .line 103
    invoke-static {p1, p2, v1, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v1

    .line 106
    iget-wide v2, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v4, 0x0

    invoke-interface {p1, v4, v5, v2, v3}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v2

    .line 107
    iget-wide v3, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v5, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->eocdOffset:J

    iget-wide v7, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    sub-long/2addr v5, v7

    .line 108
    invoke-interface {p1, v3, v4, v5, v6}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v3

    .line 111
    iget-object v4, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    .line 113
    iget-object v5, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v5

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    return-object v10
.end method

.method private static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 147
    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, p2

    move-object v1, v7

    move-object v2, p5

    move-object v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    .line 148
    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 156
    invoke-virtual/range {p9 .. p9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, v7

    move-object/from16 v5, p9

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->verifyIntegrity(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 161
    invoke-virtual/range {p9 .. p9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v0, p9

    .line 162
    iput-boolean v8, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    :cond_1
    return-void
.end method

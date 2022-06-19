.class Lcom/nimbusds/jose/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Lcom/nimbusds/jose/f;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/f;->h:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "SHA256withRSA"

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/f;->i:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA384withRSA"

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/f;->j:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA512withRSA"

    goto :goto_1

    .line 4
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/f;->k:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x20

    const/4 v6, 0x1

    const-string v2, "SHA256"

    const-string v3, "MGF1"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA256withRSAandMGF1"

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 6
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/f;->l:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x30

    const/4 v6, 0x1

    const-string v2, "SHA384"

    const-string v3, "MGF1"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA384withRSAandMGF1"

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/f;->m:Lcom/nimbusds/jose/f;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "SHA512"

    const-string v3, "MGF1"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA512withRSAandMGF1"

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    .line 10
    :try_start_0
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v1, :cond_6

    .line 12
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid RSASSA-PSS salt length parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_3
    return-object p0

    :catch_1
    move-exception p0

    .line 14
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported RSASSA algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_7
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    sget-object v0, Lcom/nimbusds/jose/m/d;->c:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/m/a;->b(Lcom/nimbusds/jose/f;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

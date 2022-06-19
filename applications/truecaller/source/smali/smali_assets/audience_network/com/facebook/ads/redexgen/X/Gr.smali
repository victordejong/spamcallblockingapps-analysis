.class public final Lcom/facebook/ads/redexgen/X/Gr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qf;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8l;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/Qk;

.field public A04:Lcom/facebook/ads/redexgen/X/Qv;

.field public final A05:Lcom/facebook/ads/redexgen/X/Qp;

.field public final A06:Lcom/facebook/ads/redexgen/X/Qu;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P814sFImmOC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RvJjsajerkLdUat3TDI8NPR3DDSWtO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZLSXhw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wxtWSqUF9a7Aw2d1StIocmcoa4QX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "58xAXbC3p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zj1UZNXOzFX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    .line 35657
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gr;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qk;Lcom/facebook/ads/redexgen/X/8l;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 35658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35659
    new-instance v0, Lcom/facebook/ads/redexgen/X/HU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A05:Lcom/facebook/ads/redexgen/X/Qp;

    .line 35660
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    .line 35661
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gr;->A0B()V

    .line 35662
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 35663
    new-instance v0, Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4F;-><init>(Lcom/facebook/ads/redexgen/X/Gr;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    .line 35664
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gr;->A01:Ljava/util/concurrent/Executor;

    .line 35665
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    .line 35666
    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35667
    const/4 v1, 0x0

    .line 35668
    .local p0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qu;->ACk(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    .line 35669
    if-eqz v1, :cond_0

    .line 35670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Qu;->AFX(Ljava/io/OutputStream;[B)V

    .line 35671
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 35672
    if-eqz v1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35673
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35674
    :catch_0
    :cond_1
    return v0

    .line 35675
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 35676
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35677
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Qs;
        }
    .end annotation

    .line 35678
    const/16 v2, 0xcf

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    .line 35679
    .local p1, "uc":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 35680
    .local v2, "httpResponse":Lcom/facebook/ads/redexgen/X/Qe;
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Gr;->A02:Z

    .line 35681
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LJ;->A04()Z

    move-result v0

    .line 35682
    .local v0, "isE2E":Z
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gr;->A09()Ljava/net/Proxy;

    move-result-object v1

    .line 35683
    .local v6, "proxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 35684
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Gr;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qr;)V

    .line 35685
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Gr;->A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qr;)V

    .line 35686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A06()[B

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Qv;->A95(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 35688
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 35689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A02:Z

    .line 35690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A01()Ljava/util/Set;

    move-result-object v5

    .line 35691
    .local v2, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A02()Ljava/util/Set;

    move-result-object v4

    .line 35692
    .local v7, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 35693
    :cond_1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 35694
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, 0x1

    .line 35695
    .local v0, "pinCerts":Z
    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x1

    .line 35696
    .local v1, "pinKeys":Z
    :cond_3
    instance-of v0, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-eqz v7, :cond_5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35697
    :cond_4
    :try_start_1
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/Qw;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_4
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35698
    :catch_0
    move-exception v5

    goto :goto_3

    .line 35699
    .end local v3
    :catch_1
    :try_start_2
    move-exception v5

    .line 35700
    .local v3, "e":Ljava/security/cert/CertificateException;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A1m:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A98(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_4

    .line 35701
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A1l:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A98(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 35702
    :cond_5
    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35703
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A06()[B

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A00(Ljava/net/HttpURLConnection;[B)I

    .line 35704
    :cond_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35705
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v1

    .end local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_5

    .line 35706
    :cond_7
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35707
    .end local v2
    .end local v1    # "pinKeys":Z
    .end local v0    # "pinCerts":Z
    .end local v6    # "proxy":Ljava/net/Proxy;
    .end local v2
    .end local v7    # "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v0
    .restart local p0    # "httpResponse":Lcom/facebook/ads/redexgen/X/Qe;
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qv;->A96(Lcom/facebook/ads/redexgen/X/Qe;)V

    .line 35709
    :cond_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35710
    return-object v1

    .line 35711
    :catch_2
    move-exception v1

    .line 35712
    .local p0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v2

    .line 35713
    if-eqz v2, :cond_11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qe;->A7U()I

    move-result v0

    if-lez v0, :cond_11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qv;->A96(Lcom/facebook/ads/redexgen/X/Qe;)V

    .line 35716
    :cond_9
    if-eqz v3, :cond_a

    .line 35717
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35718
    :cond_a
    return-object v2

    .line 35719
    .local v1, "ee":Ljava/lang/Exception;
    :catch_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35720
    .restart local p1    # "uc":Ljava/net/HttpURLConnection;
    .restart local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "pinCerts":Z
    :catchall_0
    if-eqz v2, :cond_d

    :try_start_6
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qe;->A7U()I

    move-result v0

    if-lez v0, :cond_d
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 35721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qv;->A96(Lcom/facebook/ads/redexgen/X/Qe;)V

    .line 35723
    :cond_b
    if-eqz v3, :cond_c

    .line 35724
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35725
    :cond_c
    return-object v2

    .line 35726
    :cond_d
    :try_start_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qe;)V

    goto :goto_7

    .line 35727
    .end local v1    # "ee":Ljava/lang/Exception;
    :goto_6
    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qe;->A7U()I

    move-result v0

    if-lez v0, :cond_10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 35728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qv;->A96(Lcom/facebook/ads/redexgen/X/Qe;)V

    .line 35730
    :cond_e
    if-eqz v3, :cond_f

    .line 35731
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35732
    :cond_f
    return-object v2

    .line 35733
    :cond_10
    :try_start_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qe;)V

    goto :goto_7

    :cond_11
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qe;)V

    .end local p1    # "uc":Ljava/net/HttpURLConnection;
    .end local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v0    # "pinCerts":Z
    :goto_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 35734
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    .end local p0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 35735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qv;->A96(Lcom/facebook/ads/redexgen/X/Qe;)V

    .line 35736
    :cond_12
    if-eqz v3, :cond_13

    .line 35737
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35738
    :cond_13
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35740
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gr;->A0C(Lcom/facebook/ads/redexgen/X/Qr;)V

    .line 35741
    :cond_0
    const/4 v3, 0x0

    .line 35742
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/Qe;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gr;->A01(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Qs; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35743
    :catch_0
    move-exception v2

    .line 35744
    .local p1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Qs;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qe;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qu;->AAY(Lcom/facebook/ads/redexgen/X/Qs;)Z

    goto :goto_0

    .line 35745
    .end local p1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 35746
    .local p1, "hre":Lcom/facebook/ads/redexgen/X/Qs;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qu;->AAY(Lcom/facebook/ads/redexgen/X/Qs;)Z

    .line 35747
    .end local p1    # "hre":Lcom/facebook/ads/redexgen/X/Qs;
    :goto_0
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qn;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35748
    new-instance v0, Lcom/facebook/ads/redexgen/X/H7;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/H7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qn;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A02(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qn;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35749
    new-instance v0, Lcom/facebook/ads/redexgen/X/H2;

    const/4 v2, 0x0

    move-object v3, p2

    move-object v1, p1

    move-object v5, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/H2;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qn;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A02(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35750
    const/4 v2, 0x0

    .line 35751
    .local p0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 35752
    .local p1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 35753
    if-eqz v2, :cond_0

    .line 35754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qu;->ADK(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 35755
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gs;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 35756
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35757
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35758
    :catch_0
    :cond_1
    return-object v0

    .line 35759
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 35760
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35761
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35762
    const/4 v2, 0x0

    .line 35763
    .local p0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 35764
    .local p1, "responseBody":[B
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qu;->ACj(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 35765
    if-eqz v2, :cond_0

    .line 35766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qu;->ADK(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 35767
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gs;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 35768
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35769
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35770
    :catch_0
    :cond_1
    return-object v0

    .line 35771
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 35772
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35773
    :catch_1
    :cond_2
    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35774
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35775
    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 35776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qu;->ACi(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 35777
    :catch_0
    move-exception v4

    .line 35778
    .local p0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()Ljava/net/Proxy;
    .locals 7

    .line 35779
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 35780
    .local v0, "proxy":Ljava/net/Proxy;
    const/16 v3, 0xb3

    const/16 v2, 0xe

    const/16 v1, 0x11

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35781
    .local v3, "proxyAddress":Ljava/lang/String;
    const/16 v3, 0xc1

    const/16 v2, 0xe

    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35782
    .local v2, "portStr":Ljava/lang/String;
    const/4 v4, -0x1

    .line 35783
    .local v1, "port":I
    if-eqz v1, :cond_0

    .line 35784
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35785
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    return-object v0

    .line 35786
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x2

    aget-object v3, v3, v1

    const/16 v1, 0x1c

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v2, "UW2PAxLqNCWQ7bdKo0A7Pw4nSyNkIv"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    const-string v2, "26yRDH09B"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    if-nez v6, :cond_1

    if-lez v4, :cond_1

    const v1, 0xffff

    if-gt v4, v1, :cond_1

    .line 35787
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 35788
    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xd6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x12t
        0x37t
        0x3at
        0x5ft
        0x37t
        0x35t
        0x4at
        0x47t
        0xet
        0x4at
        0x48t
        0xft
        0x4ct
        0x5at
        0x5dt
        0x43t
        0xft
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4ft
        0xet
        0x58t
        0x4ft
        0x42t
        0x47t
        0x4at
        0xet
        0x7bt
        0x7ct
        0x62t
        0xet
        0x41t
        0x48t
        0xet
        0x5et
        0x66t
        0x6at
        0x9t
        0x1et
        0x6at
        0x77t
        0x6at
        0x1ct
        0x10t
        0x62t
        0x64t
        0x10t
        0xdt
        0x10t
        0x37t
        0x3bt
        0x6ft
        0x69t
        0x62t
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x51t
        0x11t
        0x3bt
        0x32t
        0x3ft
        0x2et
        0x2dt
        0x3bt
        0x3at
        0x5et
        0x2at
        0x37t
        0x33t
        0x3bt
        0x5et
        0x43t
        0x5et
        0x1t
        0x23t
        0x32t
        0x32t
        0x2ft
        0x28t
        0x21t
        0x66t
        0x32t
        0x2et
        0x23t
        0x66t
        0x2et
        0x32t
        0x32t
        0x36t
        0x66t
        0x34t
        0x23t
        0x35t
        0x36t
        0x29t
        0x28t
        0x35t
        0x23t
        0x66t
        0x32t
        0x2ft
        0x2bt
        0x23t
        0x22t
        0x66t
        0x29t
        0x33t
        0x32t
        0x3dt
        0x3ct
        0x2et
        0x45t
        0x50t
        0x16t
        0x7t
        0x7t
        0x1bt
        0x1et
        0x14t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x58t
        0xft
        0x5at
        0x0t
        0x0t
        0x0t
        0x5at
        0x11t
        0x18t
        0x5t
        0x1at
        0x5at
        0x2t
        0x5t
        0x1bt
        0x12t
        0x19t
        0x14t
        0x18t
        0x13t
        0x12t
        0x13t
        0x4ct
        0x14t
        0x1ft
        0x16t
        0x5t
        0x4t
        0x12t
        0x3t
        0x4at
        0x22t
        0x23t
        0x31t
        0x5at
        0x4ft
        0x78t
        0x6et
        0x69t
        0x77t
        0x3bt
        0x36t
        0x70t
        0x3bt
        0x36t
        0x72t
        0x24t
        0x38t
        0x38t
        0x3ct
        0x62t
        0x3ct
        0x3et
        0x23t
        0x34t
        0x35t
        0x4t
        0x23t
        0x3ft
        0x38t
        0x18t
        0x4t
        0x4t
        0x0t
        0x5et
        0x0t
        0x2t
        0x1ft
        0x8t
        0x9t
        0x20t
        0x1ft
        0x2t
        0x4t
        0x79t
        0x72t
        0x63t
        0x60t
        0x78t
        0x65t
        0x7ct
    .end array-data
.end method

.method public static declared-synchronized A0B()V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Gr;

    monitor-enter v1

    .line 35789
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35790
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35791
    :cond_0
    monitor-exit v1

    return-void

    .line 35792
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Qr;)V
    .locals 7

    .line 35793
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35794
    .local p0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A03()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qq;->A06:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qq;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35795
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35796
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A06()[B

    move-result-object v5

    const/16 v2, 0x75

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35797
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35798
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qn;->A06()Ljava/util/Map;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v1, "s0c02ga9sXqOOqZgqzjFkG4II3gfLx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "iECV1gT3x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 35799
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35800
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35801
    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35802
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35803
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35804
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 35805
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35806
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qr;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35807
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35808
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35809
    .local p1, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A0E(Ljava/lang/String;II)V

    .line 35810
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Qr;Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 2

    .line 35811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gr;->A05:Lcom/facebook/ads/redexgen/X/Qp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/Qp;->A5h(Lcom/facebook/ads/redexgen/X/Gr;Lcom/facebook/ads/redexgen/X/Qg;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/Qo;

    move-result-object v0

    .line 35812
    .local p0, "executor":Lcom/facebook/ads/redexgen/X/Qo;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qo;->A5E(Lcom/facebook/ads/redexgen/X/Qr;)V

    .line 35813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35814
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gr;->A0C(Lcom/facebook/ads/redexgen/X/Qr;)V

    .line 35815
    :cond_0
    return-void
.end method

.method private A0E(Ljava/lang/String;II)V
    .locals 4

    .line 35816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gr;->A09:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35817
    .local p0, "tagWithCount":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    .line 35818
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35819
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Gr;->A0E(Ljava/lang/String;II)V

    .line 35820
    :cond_0
    return-void
.end method

.method private A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qn;)V
    .locals 6

    .line 35821
    new-instance v0, Lcom/facebook/ads/redexgen/X/H2;

    const/4 v2, 0x0

    move-object v3, p2

    move-object v1, p1

    move-object v5, p5

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/H2;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qn;)V

    .line 35822
    .local p0, "req":Lcom/facebook/ads/redexgen/X/H2;
    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/Gr;->A0D(Lcom/facebook/ads/redexgen/X/Qr;Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 35823
    return-void
.end method

.method private A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qr;)V
    .locals 5

    .line 35824
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qn;->A06()Ljava/util/Map;

    move-result-object v4

    .line 35825
    .local p0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qn;->A05()Lcom/facebook/ads/redexgen/X/Qd;

    move-result-object v3

    .line 35826
    .local p1, "commonRequestHeadersFactory":Lcom/facebook/ads/redexgen/X/Qd;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35827
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35828
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35829
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 35830
    :cond_0
    if-eqz v3, :cond_1

    .line 35831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 35832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A03()Z

    move-result v0

    .line 35833
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Qd;->A5T(Z)Ljava/util/Map;

    move-result-object v3

    .line 35834
    .local p2, "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35835
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35836
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35837
    .end local v4    # "name":Ljava/lang/String;
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 35838
    .end local p2    # "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private final A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35839
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v1

    .line 35840
    .local p0, "configuration":Lcom/facebook/ads/redexgen/X/Qn;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qn;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35841
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qn;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35842
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    .line 35843
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qr;->A03()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qr;->A04()Ljava/lang/String;

    move-result-object v0

    .line 35844
    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Qu;->AD0(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qq;Ljava/lang/String;)V

    .line 35845
    return-void
.end method

.method private final A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/Qr;)Z
    .locals 9

    .line 35846
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v8

    .line 35847
    .local p0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/Qn;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    .line 35848
    .local p1, "elapsedTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35849
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x43

    const/16 v3, 0xf

    const/16 v0, 0x23

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    const/4 v3, 0x7

    const/16 v0, 0x17

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35850
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Qn;->A00()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    const/4 v3, 0x7

    const/16 v0, 0x6d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35851
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Qn;->A02()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35852
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Qv;->A8h(Ljava/lang/String;)V

    .line 35853
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A02:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 35854
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Qn;->A02()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 35855
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Qn;->A00()I

    move-result v0

    int-to-long v4, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x1c

    if-eq v3, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v3, "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const-string v3, "g5URFCrsk"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_4

    :goto_1
    return v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Qs;
        }
    .end annotation

    .line 35856
    move-object/from16 v8, p0

    move-object v8, v8

    const/4 v7, 0x0

    .line 35857
    .local v8, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 35858
    .local v0, "startTime":J
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qn;->A01()I

    move-result v6

    .line 35859
    .local v1, "maxRetries":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qn;->A03()I

    move-result v3

    int-to-long v9, v3

    .line 35860
    .local v6, "throttleTimeMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qr;->A02()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qn;->A04()I

    move-result v3

    int-to-long v3, v3

    add-long v17, v17, v3

    .line 35861
    .end local v8    # "numTries":I
    .local v0, "numTries":I
    .local v6, "endTimeMillis":J
    .local v1, "startTime":J
    :goto_0
    if-ge v7, v6, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1c

    if-eq v4, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v5, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "w7CndVwumsN"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "Wx3tR5uVNB4"

    const/4 v3, 0x7

    aput-object v4, v5, v3

    cmp-long v3, v17, v11

    if-lez v3, :cond_10

    .line 35862
    :try_start_0
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Qv;->A8R()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35863
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/Gr;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    const/4 v4, 0x4

    const/16 v3, 0x73

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x38

    const/16 v4, 0x9

    const/16 v3, 0x46

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35864
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qr;->A05()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35865
    invoke-interface {v11, v3}, Lcom/facebook/ads/redexgen/X/Qv;->A8h(Ljava/lang/String;)V

    .line 35866
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Qs; {:try_start_0 .. :try_end_0} :catch_0

    .line 35867
    .end local v1    # "startTime":J
    .local v12, "startTime":J
    :try_start_1
    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A01(Lcom/facebook/ads/redexgen/X/Qr;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v16

    .line 35868
    .local v8, "res":Lcom/facebook/ads/redexgen/X/Qe;
    if-eqz v16, :cond_5

    .line 35869
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    .line 35870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v1

    .line 35871
    invoke-interface/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Qe;->A5l()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v11, v3

    .line 35872
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    if-nez v3, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    array-length v3, v3
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/Qs; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v3, v3

    sget-object v13, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v5, 0x1c

    if-eq v13, v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v15, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v13, "MaIX15CFtbyRTCgSwX4E1qAS9DeU"

    const/4 v5, 0x5

    aput-object v13, v15, v5

    .line 35873
    :goto_1
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/Qe;->A7U()I

    move-result v28

    const/16 v29, 0x0

    .line 35874
    move-wide/from16 v24, v11

    move-wide/from16 v26, v3

    move-object/from16 v19, v14

    move-wide/from16 v20, v1

    invoke-interface/range {v19 .. v29}, Lcom/facebook/ads/redexgen/X/8l;->A8z(JJJJILjava/lang/Exception;)V

    goto/16 :goto_4
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/Qs; {:try_start_2 .. :try_end_2} :catch_1

    .line 35875
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :catch_0
    move-exception v5

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v11, v3

    const/4 v3, 0x7

    aget-object v3, v11, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "zjCcSqcqQCV1DKlppK5B8d9XgS0n"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    goto :goto_2

    .end local v8    # "res":Lcom/facebook/ads/redexgen/X/Qe;
    :catch_1
    move-exception v5

    .line 35876
    .end local v1    # "startTime":J
    .restart local v12    # "startTime":J
    .local v7, "e":Lcom/facebook/ads/redexgen/X/Qs;
    :goto_2
    invoke-direct {v8, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/Qr;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v12, v6, -0x1

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v11, v3

    const/4 v3, 0x6

    aget-object v3, v11, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_6

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "5zGihRv0GXktBIsysHbk9bX5FynZ"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_7

    .line 35877
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "fqIjKwbeYbDMXnQaOc49X5RkZCGi"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_7

    goto :goto_3

    .line 35878
    :cond_7
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Gr;->A06:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v3, v5}, Lcom/facebook/ads/redexgen/X/Qu;->AAY(Lcom/facebook/ads/redexgen/X/Qs;)Z

    move-result v3

    .line 35879
    .local v3, "isRecoverable":Z
    if-eqz v3, :cond_a

    add-int/lit8 v12, v6, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1c

    if-eq v4, v3, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "l1qtzOEwA58"

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const-string v4, "YwbiT1tGtPK"

    const/4 v3, 0x7

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_a

    .line 35880
    const-wide/16 v3, 0x0

    cmp-long v11, v9, v3

    if-lez v11, :cond_5

    .line 35881
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 35882
    :goto_4
    return-object v16
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 35883
    :catch_2
    move-exception v17

    .line 35884
    .local v3, "ie":Ljava/lang/InterruptedException;
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    .line 35885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    .line 35886
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    if-nez v6, :cond_9

    :goto_5
    const/16 v16, 0x0

    .line 35887
    move-wide v14, v3

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/8l;->A8z(JJJJILjava/lang/Exception;)V

    .line 35888
    throw v5

    .line 35889
    :cond_9
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    array-length v0, v0

    int-to-long v3, v0

    goto :goto_5

    .line 35890
    .end local v1    # "startTime":J
    .restart local v7    # "e":Lcom/facebook/ads/redexgen/X/Qs;
    .restart local v3    # "ie":Ljava/lang/InterruptedException;
    .restart local v12    # "startTime":J
    :cond_a
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qs;->A00()Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v9

    .line 35891
    .local v8, "response":Lcom/facebook/ads/redexgen/X/Qe;
    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    .line 35892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    .line 35893
    if-eqz v9, :cond_b

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qe;->A5l()[B

    move-result-object v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0xa

    if-eq v4, v3, :cond_f

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gr;->A08:[Ljava/lang/String;

    const-string v4, "TEyoiCytVC1tTBwzPYE"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    if-nez v7, :cond_e

    .line 35894
    :cond_b
    const-wide/16 v3, 0x0

    .line 35895
    :goto_6
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    if-nez v6, :cond_d

    const-wide/16 v6, 0x0

    .line 35896
    :goto_7
    if-nez v9, :cond_c

    const/16 v17, 0x0

    .line 35897
    :goto_8
    move-object v8, v8

    move-wide v9, v1

    move-wide v13, v3

    move-wide v15, v6

    move-object/from16 v18, v5

    invoke-interface/range {v8 .. v18}, Lcom/facebook/ads/redexgen/X/8l;->A8z(JJJJILjava/lang/Exception;)V

    .line 35898
    throw v5

    .line 35899
    :cond_c
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qe;->A7U()I

    move-result v17

    goto :goto_8

    .line 35900
    :cond_d
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    array-length v0, v0

    int-to-long v6, v0

    goto :goto_7

    .line 35901
    :cond_e
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qe;->A5l()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35902
    .end local v8    # "response":Lcom/facebook/ads/redexgen/X/Qe;
    .end local v7    # "e":Lcom/facebook/ads/redexgen/X/Qs;
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :cond_10
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/Gr;->A00:Lcom/facebook/ads/redexgen/X/8l;

    .line 35903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    .line 35904
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    if-nez v3, :cond_11

    const-wide/16 v3, 0x0

    :goto_9
    const/16 v16, 0x0

    const/16 v6, 0x52

    const/16 v5, 0x23

    const/16 v0, 0x1b

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 35905
    move-wide v14, v3

    move-object/from16 v17, v0

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/8l;->A8z(JJJJILjava/lang/Exception;)V

    .line 35906
    const/4 v0, 0x0

    return-object v0

    .line 35907
    :cond_11
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qr;->A04:[B

    array-length v0, v0

    int-to-long v3, v0

    goto :goto_9
.end method

.method public final ACs(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Qe;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35908
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/Qt;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/Qt;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 35909
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A00()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v0

    .line 35910
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qn;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v0

    return-object v0
.end method

.method public final ACt(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/Qe;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 35912
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A00()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v3

    .line 35913
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qn;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v0

    return-object v0
.end method

.method public final ACu(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qg;)V
    .locals 6

    .line 35914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gr;->A03:Lcom/facebook/ads/redexgen/X/Qk;

    .line 35915
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qk;->A00()Lcom/facebook/ads/redexgen/X/Qn;

    move-result-object v5

    .line 35916
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A07(III)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gr;->A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qn;)V

    .line 35917
    return-void
.end method

.class public Lcom/appnext/base/moments/a/a/c;
.super Lcom/appnext/base/a/b/a;
.source "SourceFile"


# instance fields
.field private cg:Ljava/lang/String;

.field private ch:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private cj:Ljava/lang/String;

.field private ck:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private cm:Ljava/lang/String;

.field private cn:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appnext/base/a/b/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/base/moments/a/a/c;->cg:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/appnext/base/moments/a/a/c;->ch:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/appnext/base/moments/a/a/c;->ci:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/appnext/base/moments/a/a/c;->cj:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/appnext/base/moments/a/a/c;->ck:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/appnext/base/moments/a/a/c;->cl:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/appnext/base/moments/a/a/c;->cm:Ljava/lang/String;

    .line 9
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 10
    iput-object p2, p0, Lcom/appnext/base/moments/a/a/c;->cn:Lorg/json/JSONObject;

    return-void

    .line 11
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appnext/base/moments/a/a/c;->cn:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 12
    :catchall_0
    iput-object p2, p0, Lcom/appnext/base/moments/a/a/c;->cn:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public final aa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->ck:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final af()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/c;->cn:Lorg/json/JSONObject;

    return-object v0
.end method

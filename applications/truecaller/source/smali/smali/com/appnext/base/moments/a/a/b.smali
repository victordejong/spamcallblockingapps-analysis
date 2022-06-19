.class public final Lcom/appnext/base/moments/a/a/b;
.super Lcom/appnext/base/a/b/a;
.source "SourceFile"


# instance fields
.field private cc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private ce:Ljava/lang/String;

.field private cf:Ljava/util/Date;

.field private mDataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/appnext/base/moments/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/appnext/base/a/b/a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/appnext/base/moments/a/a/b;->cc:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/appnext/base/moments/a/a/b;->cd:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/appnext/base/moments/a/a/b;->ce:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/appnext/base/moments/a/a/b;->cf:Ljava/util/Date;

    .line 7
    iput-object p5, p0, Lcom/appnext/base/moments/a/a/b;->mDataType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final U()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/b;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/b;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final W()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/b;->cf:Ljava/util/Date;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/b;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a/b;->cd:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/hiya/stingray/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/j;->g()Lg/g/a/b/j1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/j$b;->a:Lcom/hiya/stingray/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$b;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$b;->a:Lcom/hiya/stingray/j;

    invoke-static {v0}, Lcom/hiya/stingray/j;->h(Lcom/hiya/stingray/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/hiya/stingray/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/j;->a()Lg/g/a/b/j1/m;
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
    iput-object p1, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/l;->a(Lg/g/a/b/j1/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    invoke-static {v0}, Lcom/hiya/stingray/j;->h(Lcom/hiya/stingray/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    invoke-static {v0}, Lcom/hiya/stingray/j;->h(Lcom/hiya/stingray/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    iget-object v1, v1, Lcom/hiya/stingray/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    .line 6
    invoke-static {v0}, Lcom/hiya/stingray/j;->h(Lcom/hiya/stingray/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/j$d;->a:Lcom/hiya/stingray/j;

    iget-object v1, v1, Lcom/hiya/stingray/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

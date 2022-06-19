.class final Lcom/hiya/stingray/manager/m3$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3$h;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/y;

.field final synthetic b:Lcom/hiya/stingray/manager/m3$h;


# direct methods
.method constructor <init>(Lio/realm/y;Lcom/hiya/stingray/manager/m3$h;Li/c/b0/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$h$a;->a:Lio/realm/y;

    iput-object p2, p0, Lcom/hiya/stingray/manager/m3$h$a;->b:Lcom/hiya/stingray/manager/m3$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/m3$h$a;->a:Lio/realm/y;

    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$h$a;->b:Lcom/hiya/stingray/manager/m3$h;

    iget-object v0, v0, Lcom/hiya/stingray/manager/m3$h;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/m3;->d(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/t/i1/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/m3$h$a;->b:Lcom/hiya/stingray/manager/m3$h;

    iget-object v1, v1, Lcom/hiya/stingray/manager/m3$h;->b:Lcom/hiya/stingray/t/g1/a;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/i1/o0;->a(Lcom/hiya/stingray/t/g1/a;)Lcom/hiya/stingray/q/c/i/e;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->h1(Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/n;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->I0(Lio/realm/e0;[Lio/realm/n;)Lio/realm/e0;

    return-void
.end method

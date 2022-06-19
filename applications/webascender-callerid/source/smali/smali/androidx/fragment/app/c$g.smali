.class Landroidx/fragment/app/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;ZLandroidx/fragment/app/f0$e;Landroidx/fragment/app/f0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/fragment/app/f0$e;

.field final synthetic g:Landroidx/fragment/app/f0$e;

.field final synthetic h:Z

.field final synthetic i:Lf/e/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/f0$e;Landroidx/fragment/app/f0$e;ZLf/e/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$g;->f:Landroidx/fragment/app/f0$e;

    iput-object p3, p0, Landroidx/fragment/app/c$g;->g:Landroidx/fragment/app/f0$e;

    iput-boolean p4, p0, Landroidx/fragment/app/c$g;->h:Z

    iput-object p5, p0, Landroidx/fragment/app/c$g;->i:Lf/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$g;->f:Landroidx/fragment/app/f0$e;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/f0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c$g;->g:Landroidx/fragment/app/f0$e;

    invoke-virtual {v1}, Landroidx/fragment/app/f0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/c$g;->h:Z

    iget-object v3, p0, Landroidx/fragment/app/c$g;->i:Lf/e/a;

    const/4 v4, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf/e/a;Z)V

    return-void
.end method

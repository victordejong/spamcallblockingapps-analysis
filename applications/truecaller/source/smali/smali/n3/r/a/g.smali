.class public Ln3/r/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/r/a/u0$d;

.field public final synthetic b:Ln3/r/a/u0$d;

.field public final synthetic c:Z

.field public final synthetic d:Ln3/g/a;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Ln3/r/a/u0$d;Ln3/r/a/u0$d;ZLn3/g/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/r/a/g;->a:Ln3/r/a/u0$d;

    iput-object p3, p0, Ln3/r/a/g;->b:Ln3/r/a/u0$d;

    iput-boolean p4, p0, Ln3/r/a/g;->c:Z

    iput-object p5, p0, Ln3/r/a/g;->d:Ln3/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/r/a/g;->a:Ln3/r/a/u0$d;

    .line 2
    iget-object v0, v0, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v1, p0, Ln3/r/a/g;->b:Ln3/r/a/u0$d;

    .line 4
    iget-object v1, v1, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-boolean v2, p0, Ln3/r/a/g;->c:Z

    iget-object v3, p0, Ln3/r/a/g;->d:Ln3/g/a;

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Ln3/r/a/m0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLn3/g/a;Z)V

    return-void
.end method

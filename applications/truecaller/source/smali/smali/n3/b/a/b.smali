.class public Ln3/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ln3/b/a/c;


# direct methods
.method public constructor <init>(Ln3/b/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/b;->a:Ln3/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/b;->a:Ln3/b/a/c;

    iget-boolean v0, p1, Ln3/b/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/b/a/c;->g()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

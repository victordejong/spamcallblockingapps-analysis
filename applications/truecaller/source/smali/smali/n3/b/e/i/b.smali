.class public abstract Ln3/b/e/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/m;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Ln3/b/e/i/g;

.field public d:Landroid/view/LayoutInflater;

.field public e:Ln3/b/e/i/m$a;

.field public f:I

.field public g:I

.field public h:Ln3/b/e/i/n;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/b/e/i/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ln3/b/e/i/b;->d:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Ln3/b/e/i/b;->f:I

    .line 5
    iput p3, p0, Ln3/b/e/i/b;->g:I

    return-void
.end method


# virtual methods
.method public b(Ln3/b/e/i/g;Ln3/b/e/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ln3/b/e/i/g;Ln3/b/e/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/e/i/b;->i:I

    return v0
.end method

.method public i(Ln3/b/e/i/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/e/i/b;->e:Ln3/b/e/i/m$a;

    return-void
.end method

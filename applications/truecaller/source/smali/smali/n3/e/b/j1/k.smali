.class public final synthetic Ln3/e/b/j1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/p1$a;


# static fields
.field public static final synthetic a:Ln3/e/b/j1/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/e/b/j1/k;

    invoke-direct {v0}, Ln3/e/b/j1/k;-><init>()V

    sput-object v0, Ln3/e/b/j1/k;->a:Ln3/e/b/j1/k;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/j1/p1$b;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Ln3/e/b/j1/p1$b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p1, Ln3/e/b/j1/p1$b;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

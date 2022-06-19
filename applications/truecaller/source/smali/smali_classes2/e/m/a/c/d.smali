.class public final synthetic Le/m/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/t$b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(ZZIZIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/m/a/c/d;->a:Z

    iput-boolean p2, p0, Le/m/a/c/d;->b:Z

    iput p3, p0, Le/m/a/c/d;->c:I

    iput-boolean p4, p0, Le/m/a/c/d;->d:Z

    iput p5, p0, Le/m/a/c/d;->e:I

    iput-boolean p6, p0, Le/m/a/c/d;->f:Z

    iput-boolean p7, p0, Le/m/a/c/d;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/q0$b;)V
    .locals 7

    iget-boolean v0, p0, Le/m/a/c/d;->a:Z

    iget-boolean v1, p0, Le/m/a/c/d;->b:Z

    iget v2, p0, Le/m/a/c/d;->c:I

    iget-boolean v3, p0, Le/m/a/c/d;->d:Z

    iget v4, p0, Le/m/a/c/d;->e:I

    iget-boolean v5, p0, Le/m/a/c/d;->f:Z

    iget-boolean v6, p0, Le/m/a/c/d;->g:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p1, v1, v2}, Le/m/a/c/q0$b;->G5(ZI)V

    :cond_0
    if-eqz v3, :cond_1

    .line 2
    invoke-interface {p1, v4}, Le/m/a/c/q0$b;->Zl(I)V

    :cond_1
    if-eqz v5, :cond_2

    .line 3
    invoke-interface {p1, v6}, Le/m/a/c/q0$b;->Xl(Z)V

    :cond_2
    return-void
.end method

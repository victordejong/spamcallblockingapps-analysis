.class public Le/l/a/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/l/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$d;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/l/a/d$d;->a:Le/l/a/d;

    iget-object v0, v0, Le/l/a/d;->v0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2
    iget-object v0, p0, Le/l/a/d$d;->a:Le/l/a/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/l/a/d;->c:Z

    return-void
.end method

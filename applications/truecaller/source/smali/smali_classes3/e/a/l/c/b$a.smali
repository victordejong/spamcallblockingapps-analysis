.class public final Le/a/l/c/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Le/a/l/i1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->Kd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/c/b$a;->a:I

    iput-object p2, p0, Le/a/l/c/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Le/a/l/c/b$a;->a:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l/c/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/b;

    invoke-virtual {p1}, Le/a/l/c/b;->SA()Le/a/l/c/h;

    move-result-object p1

    invoke-interface {p1}, Le/a/l/d0;->th()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/l/c/b$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/l/c/b;

    invoke-virtual {v0}, Le/a/l/c/b;->SA()Le/a/l/c/h;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/l/d0;->Ji(Ljava/lang/String;)V

    return-void
.end method

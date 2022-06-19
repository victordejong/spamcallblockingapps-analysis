.class public final Le/a/d/v/l/e/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/e;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/l/e/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c0/d0;

.field public final synthetic b:Le/a/d/v/l/e/e;

.field public final synthetic c:Ls1/w/d;


# direct methods
.method public constructor <init>(Le/a/d/c0/d0;Le/a/d/v/l/e/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/e$b;->a:Le/a/d/c0/d0;

    iput-object p2, p0, Le/a/d/v/l/e/e$b;->b:Le/a/d/v/l/e/e;

    iput-object p3, p0, Le/a/d/v/l/e/e$b;->c:Ls1/w/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Le/a/d/v/l/e/m;

    .line 2
    instance-of p2, p1, Le/a/d/v/l/e/m$b;

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/d/v/l/e/e$b;->a:Le/a/d/c0/d0;

    sget-object p2, Le/a/d/v/l/c$d;->b:Le/a/d/v/l/c$d;

    invoke-interface {p1, p2}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Le/a/d/v/l/e/m$c;

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/v/l/e/e$b;->b:Le/a/d/v/l/e/e;

    .line 5
    iget-object p1, p1, Le/a/d/v/l/e/e;->h:Le/a/d/v/l/e/i;

    .line 6
    invoke-interface {p1}, Le/a/d/v/l/e/i;->a()Lq3/a/p1;

    .line 7
    iget-object v0, p0, Le/a/d/v/l/e/e$b;->b:Le/a/d/v/l/e/e;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v3, Le/a/d/v/l/e/f;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Le/a/d/v/l/e/f;-><init>(Le/a/d/v/l/e/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    iget-object p1, p0, Le/a/d/v/l/e/e$b;->a:Le/a/d/c0/d0;

    sget-object p2, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    invoke-interface {p1, p2}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Le/a/d/v/l/e/e$b;->b:Le/a/d/v/l/e/e;

    .line 12
    iget-object p1, p1, Le/a/d/v/l/e/e;->c:Lq3/a/x2/a1;

    .line 13
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    instance-of p2, p1, Le/a/d/v/l/e/m$a;

    if-eqz p2, :cond_2

    iget-object p2, p0, Le/a/d/v/l/e/e$b;->b:Le/a/d/v/l/e/e;

    .line 16
    iget-object p2, p2, Le/a/d/v/l/e/e;->i:Le/a/d/v/l/e/g;

    .line 17
    check-cast p1, Le/a/d/v/l/e/m$a;

    .line 18
    iget-object p1, p1, Le/a/d/v/l/e/m$a;->a:Le/a/d/v/l/c$b;

    .line 19
    invoke-interface {p2, p1}, Le/a/d/v/l/e/g;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;

    .line 20
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

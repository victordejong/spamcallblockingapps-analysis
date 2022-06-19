.class public final Le/m/d/n/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/n/j/d$b;
    }
.end annotation


# static fields
.field public static final c:Le/m/d/n/j/g;


# instance fields
.field public final a:Le/m/d/v/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/a<",
            "Le/m/d/n/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/d/n/j/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/d/n/j/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/m/d/n/j/d$b;-><init>(Le/m/d/n/j/d$a;)V

    sput-object v0, Le/m/d/n/j/d;->c:Le/m/d/n/j/g;

    return-void
.end method

.method public constructor <init>(Le/m/d/v/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/a<",
            "Le/m/d/n/j/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/m/d/n/j/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Le/m/d/n/j/d;->a:Le/m/d/v/a;

    .line 4
    new-instance v0, Le/m/d/n/j/a;

    invoke-direct {v0, p0}, Le/m/d/n/j/a;-><init>(Le/m/d/n/j/d;)V

    check-cast p1, Le/m/d/m/f0;

    invoke-virtual {p1, v0}, Le/m/d/m/f0;->a(Le/m/d/v/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JLe/m/d/n/j/l/c0;)V
    .locals 8

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 3
    iget-object v0, p0, Le/m/d/n/j/d;->a:Le/m/d/v/a;

    new-instance v7, Le/m/d/n/j/b;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Le/m/d/n/j/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLe/m/d/n/j/l/c0;)V

    check-cast v0, Le/m/d/m/f0;

    invoke-virtual {v0, v7}, Le/m/d/m/f0;->a(Le/m/d/v/a$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Le/m/d/n/j/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/n/j/c;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Le/m/d/n/j/d;->c:Le/m/d/n/j/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Le/m/d/n/j/c;->b(Ljava/lang/String;)Le/m/d/n/j/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/n/j/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/m/d/n/j/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/n/j/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Le/m/d/n/j/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

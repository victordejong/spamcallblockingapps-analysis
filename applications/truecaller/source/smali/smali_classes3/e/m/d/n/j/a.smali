.class public final synthetic Le/m/d/n/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/a$a;


# instance fields
.field public final synthetic a:Le/m/d/n/j/d;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/j/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/a;->a:Le/m/d/n/j/d;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/v/b;)V
    .locals 3

    iget-object v0, p0, Le/m/d/n/j/a;->a:Le/m/d/n/j/d;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    iget-object v0, v0, Le/m/d/n/j/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/n/j/c;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

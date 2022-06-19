.class public final Le/m/a/h/a/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/f/k;


# instance fields
.field public final synthetic a:Le/m/a/h/a/f/g;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/g;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/f;->a:Le/m/a/h/a/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/f/l;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Le/m/a/h/a/f/f;->a:Le/m/a/h/a/f/g;

    iget-object p1, p1, Le/m/a/h/a/f/g;->b:Ljava/util/Set;

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object p1, p0, Le/m/a/h/a/f/f;->a:Le/m/a/h/a/f/g;

    iget-object p1, p1, Le/m/a/h/a/f/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.class public final Le/f/a/n/o/a$b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Le/f/a/n/o/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/f;

.field public final b:Z

.field public c:Le/f/a/n/o/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/f;Le/f/a/n/o/q;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Le/f/a/n/o/q<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Le/f/a/n/o/q<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    .line 2
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/f/a/n/o/a$b;->a:Le/f/a/n/f;

    .line 4
    iget-boolean p1, p2, Le/f/a/n/o/q;->a:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 5
    iget-object p1, p2, Le/f/a/n/o/q;->c:Le/f/a/n/o/w;

    .line 6
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Le/f/a/n/o/a$b;->c:Le/f/a/n/o/w;

    .line 8
    iget-boolean p1, p2, Le/f/a/n/o/q;->a:Z

    .line 9
    iput-boolean p1, p0, Le/f/a/n/o/a$b;->b:Z

    return-void
.end method

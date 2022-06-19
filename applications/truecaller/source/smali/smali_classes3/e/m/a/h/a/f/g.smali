.class public final Le/m/a/h/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/f/j;


# instance fields
.field public final synthetic a:Le/m/a/h/a/f/s;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Le/m/a/h/a/f/m;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/m;Le/m/a/h/a/f/s;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/g;->d:Le/m/a/h/a/f/m;

    iput-object p2, p0, Le/m/a/h/a/f/g;->a:Le/m/a/h/a/f/s;

    iput-object p3, p0, Le/m/a/h/a/f/g;->b:Ljava/util/Set;

    iput-object p4, p0, Le/m/a/h/a/f/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Set<",
            "Le/m/a/h/a/f/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Le/m/a/h/a/f/g;->d:Le/m/a/h/a/f/m;

    iget-object v0, p0, Le/m/a/h/a/f/g;->a:Le/m/a/h/a/f/s;

    new-instance v1, Le/m/a/h/a/f/f;

    .line 1
    invoke-direct {v1, p0}, Le/m/a/h/a/f/f;-><init>(Le/m/a/h/a/f/g;)V

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Le/m/a/h/a/f/m;->c(Le/m/a/h/a/f/s;Ljava/util/Set;Le/m/a/h/a/f/k;)V

    return-void
.end method

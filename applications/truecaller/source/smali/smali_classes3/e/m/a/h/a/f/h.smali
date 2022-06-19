.class public final Le/m/a/h/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/f/j;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Le/m/a/h/a/f/s;

.field public final synthetic c:Le/m/a/h/a/f/m;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/m;Ljava/util/Set;Le/m/a/h/a/f/s;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/h;->c:Le/m/a/h/a/f/m;

    iput-object p2, p0, Le/m/a/h/a/f/h;->a:Ljava/util/Set;

    iput-object p3, p0, Le/m/a/h/a/f/h;->b:Le/m/a/h/a/f/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 5
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

    iget-object v0, p0, Le/m/a/h/a/f/h;->a:Ljava/util/Set;

    iget-object v1, p0, Le/m/a/h/a/f/h;->c:Le/m/a/h/a/f/m;

    iget-object v2, p0, Le/m/a/h/a/f/h;->b:Le/m/a/h/a/f/s;

    .line 1
    new-instance v3, Ljava/util/HashSet;

    .line 2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Le/m/a/h/a/f/i;

    .line 3
    invoke-direct {v4, v3, v2, p1}, Le/m/a/h/a/f/i;-><init>(Ljava/util/Set;Le/m/a/h/a/f/s;Ljava/util/zip/ZipFile;)V

    invoke-virtual {v1, v2, p2, v4}, Le/m/a/h/a/f/m;->c(Le/m/a/h/a/f/s;Ljava/util/Set;Le/m/a/h/a/f/k;)V

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.class public Le/b/a/c0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/b/a/c0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/c0/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/b/a/c0/b;

    invoke-direct {v0}, Le/b/a/c0/b;-><init>()V

    iput-object v0, p0, Le/b/a/c0/c;->a:Le/b/a/c0/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/b/a/c0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Le/b/a/c0/b;

    invoke-direct {v0}, Le/b/a/c0/b;-><init>()V

    iput-object v0, p0, Le/b/a/c0/c;->a:Le/b/a/c0/b;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/b/a/c0/c;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Le/b/a/c0/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/b/a/c0/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/c0/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/b/a/c0/c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/b/a/c0/c;->a:Le/b/a/c0/b;

    .line 2
    iput-object p3, p1, Le/b/a/c0/b;->a:Ljava/lang/Object;

    .line 3
    iput-object p4, p1, Le/b/a/c0/b;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Le/b/a/c0/c;->a(Le/b/a/c0/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

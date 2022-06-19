.class public final Le/m/b/x/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/b/x/b/t;

.field public final b:Le/m/b/x/b/p;


# direct methods
.method public constructor <init>(Le/m/b/x/b/t;Le/m/b/x/b/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/b/o;->a:Le/m/b/x/b/t;

    .line 3
    iput-object p2, p0, Le/m/b/x/b/o;->b:Le/m/b/x/b/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/b/x/b/f;Le/m/b/x/b/g;)Le/m/b/x/b/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/b/o;->a:Le/m/b/x/b/t;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/m/b/x/b/n;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/m/b/x/b/n;-><init>(Le/m/b/x/b/t;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/m/b/x/b/o;->b:Le/m/b/x/b/p;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v1}, Le/m/b/x/b/p;->a(Le/m/b/x/b/n;)V

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Le/m/b/x/b/n;->d(Ljava/lang/String;)Le/m/b/x/b/n;

    if-eqz p2, :cond_1

    .line 7
    iput-object p2, v1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    iput-object p3, v1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    :cond_2
    return-object v1
.end method

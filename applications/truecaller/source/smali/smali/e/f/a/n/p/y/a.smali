.class public Le/f/a/n/p/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/p/y/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/n<",
        "Le/f/a/n/p/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/f/a/n/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/m<",
            "Le/f/a/n/p/g;",
            "Le/f/a/n/p/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/p/y/a;->b:Le/f/a/n/h;

    return-void
.end method

.method public constructor <init>(Le/f/a/n/p/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/m<",
            "Le/f/a/n/p/g;",
            "Le/f/a/n/p/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/p/y/a;->a:Le/f/a/n/p/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;
    .locals 2

    .line 1
    check-cast p1, Le/f/a/n/p/g;

    .line 2
    iget-object p2, p0, Le/f/a/n/p/y/a;->a:Le/f/a/n/p/m;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p3, p3}, Le/f/a/n/p/m$b;->a(Ljava/lang/Object;II)Le/f/a/n/p/m$b;

    move-result-object v0

    .line 4
    iget-object p2, p2, Le/f/a/n/p/m;->a:Le/f/a/t/g;

    invoke-virtual {p2, v0}, Le/f/a/t/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    sget-object v1, Le/f/a/n/p/m$b;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    check-cast p2, Le/f/a/n/p/g;

    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Le/f/a/n/p/y/a;->a:Le/f/a/n/p/m;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1, p3, p3}, Le/f/a/n/p/m$b;->a(Ljava/lang/Object;II)Le/f/a/n/p/m$b;

    move-result-object p3

    .line 12
    iget-object p2, p2, Le/f/a/n/p/m;->a:Le/f/a/t/g;

    invoke-virtual {p2, p3, p1}, Le/f/a/t/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_1
    :goto_0
    sget-object p2, Le/f/a/n/p/y/a;->b:Le/f/a/n/h;

    invoke-virtual {p4, p2}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 15
    new-instance p3, Le/f/a/n/p/n$a;

    new-instance p4, Le/f/a/n/n/j;

    invoke-direct {p4, p1, p2}, Le/f/a/n/n/j;-><init>(Le/f/a/n/p/g;I)V

    invoke-direct {p3, p1, p4}, Le/f/a/n/p/n$a;-><init>(Le/f/a/n/f;Le/f/a/n/n/d;)V

    return-object p3
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/p/g;

    const/4 p1, 0x1

    return p1
.end method

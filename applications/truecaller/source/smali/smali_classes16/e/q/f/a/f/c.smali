.class public Le/q/f/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le/q/f/a/f/h;

.field public c:Le/q/c/b/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/q/f/a/f/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/f/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/q/f/a/f/c;->b:Le/q/f/a/f/h;

    .line 4
    new-instance p1, Le/q/f/a/f/n;

    invoke-direct {p1}, Le/q/f/a/f/n;-><init>()V

    iput-object p1, p0, Le/q/f/a/f/c;->c:Le/q/c/b/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Le/q/f/a/f/c;->b:Le/q/f/a/f/h;

    iget-object v0, v0, Le/q/f/a/f/h;->c:Ljava/util/Date;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/q/f/a/f/c;->a:Ljava/lang/String;

    return-void
.end method

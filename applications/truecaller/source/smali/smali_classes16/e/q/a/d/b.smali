.class public abstract Le/q/a/d/b;
.super Le/q/a/d/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/q/a/d/a;-><init>()V

    .line 2
    move-object v0, p0

    check-cast v0, Le/a/c/r/e/a/b;

    .line 3
    iput-object p1, v0, Le/a/c/r/e/a/b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, v0, Le/a/c/r/e/a/b;->e:Ljava/lang/String;

    .line 5
    iput-object p2, v0, Le/a/c/r/e/a/b;->c:Ljava/lang/Long;

    .line 6
    iput-object p4, v0, Le/a/c/r/e/a/b;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/Long;
.end method

.method public abstract c()Ljava/lang/Long;
.end method

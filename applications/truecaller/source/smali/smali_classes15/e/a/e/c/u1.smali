.class public Le/a/e/c/u1;
.super Le/a/i/f0/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Le/a/i/f0/d;Le/a/i/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/u1;->d:Le/a/e/c/s1;

    invoke-direct {p0, p2, p3, p4}, Le/a/i/f0/i;-><init>(Le/a/i/f0/d;Le/a/i/s;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ed(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c/u1;->d:Le/a/e/c/s1;

    .line 2
    iget-object v0, p1, Le/a/e/c/s1;->R1:Le/a/i/f0/i;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/a/e/c/s1;->R1:Le/a/i/f0/i;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Le/a/e/c/s1;->E1:Z

    .line 5
    invoke-static {p1}, Le/a/e/c/s1;->YA(Le/a/e/c/s1;)V

    :cond_0
    return-void
.end method

.class public abstract Le/a/c/r/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/r/j/a$d;,
        Le/a/c/r/j/a$c;,
        Le/a/c/r/j/a$g;,
        Le/a/c/r/j/a$a;,
        Le/a/c/r/j/a$h;,
        Le/a/c/r/j/a$f;,
        Le/a/c/r/j/a$e;,
        Le/a/c/r/j/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/c/r/j/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/c/r/j/c;ZI)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/j/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/c/r/j/a;->b:Le/a/c/r/j/c;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/r/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a;->b:Le/a/c/r/j/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a;->a:Ljava/lang/String;

    return-object v0
.end method

.class public final Le/k/a/b/y/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/y/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/String;

.field public final d:[Le/k/a/b/y/b$a;


# direct methods
.method public constructor <init>(II[Ljava/lang/String;[Le/k/a/b/y/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/k/a/b/y/b$b;->a:I

    .line 3
    iput p2, p0, Le/k/a/b/y/b$b;->b:I

    .line 4
    iput-object p3, p0, Le/k/a/b/y/b$b;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Le/k/a/b/y/b$b;->d:[Le/k/a/b/y/b$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/y/b;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Le/k/a/b/y/b;->h:I

    iput v0, p0, Le/k/a/b/y/b$b;->a:I

    .line 8
    iget v0, p1, Le/k/a/b/y/b;->k:I

    iput v0, p0, Le/k/a/b/y/b$b;->b:I

    .line 9
    iget-object v0, p1, Le/k/a/b/y/b;->f:[Ljava/lang/String;

    iput-object v0, p0, Le/k/a/b/y/b$b;->c:[Ljava/lang/String;

    .line 10
    iget-object p1, p1, Le/k/a/b/y/b;->g:[Le/k/a/b/y/b$a;

    iput-object p1, p0, Le/k/a/b/y/b$b;->d:[Le/k/a/b/y/b$a;

    return-void
.end method

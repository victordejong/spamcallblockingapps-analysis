.class public Le/a/i/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/i/c/b/a;->a:I

    iput-object p2, p0, Le/a/i/c/b/a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/c/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/a/i/c/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

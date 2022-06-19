.class public Le/a/c/r/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 1

    const-string v0, "tagString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/c;->a:Ljava/lang/String;

    iput p2, p0, Le/a/c/r/c;->b:I

    iput-object p3, p0, Le/a/c/r/c;->c:Ljava/lang/Integer;

    return-void
.end method

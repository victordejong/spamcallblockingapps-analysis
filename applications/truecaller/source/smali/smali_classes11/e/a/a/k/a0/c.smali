.class public final Le/a/a/k/a0/c;
.super Le/a/a/k/o$b;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "failReason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "INTERNAL_CLIENT"

    .line 1
    invoke-direct {p0, v0}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/k/a0/c;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/a/k/a0/c;->c:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/a/k/a0/c;->d:Ljava/lang/Integer;

    return-void
.end method

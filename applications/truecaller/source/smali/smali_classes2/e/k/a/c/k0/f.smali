.class public abstract Le/k/a/c/k0/f;
.super Le/k/a/c/k0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/k/a/c/k0/f<",
        "TT;>;>",
        "Le/k/a/c/k0/b;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/k0/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Le/k/a/c/k0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/k/a/c/k0/f;->a:Le/k/a/c/k0/l;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/k0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/k0/f;->a:Le/k/a/c/k0/l;

    return-void
.end method


# virtual methods
.method public final M()Le/k/a/c/k0/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/f;->a:Le/k/a/c/k0/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

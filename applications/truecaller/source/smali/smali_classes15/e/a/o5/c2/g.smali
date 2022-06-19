.class public Le/a/o5/c2/g;
.super Le/a/o5/c2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/o5/c2/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/o5/c2/k$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/o5/c2/k$b;

    invoke-direct {v0, p0}, Le/a/o5/c2/k$b;-><init>(Le/a/o5/c2/k;)V

    const-string v1, "Vivo"

    .line 2
    iput-object v1, v0, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    return-object v0
.end method

.class public Le/k/a/c/d0/y/f;
.super Le/k/a/c/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Error;


# direct methods
.method public constructor <init>(Ljava/lang/NoClassDefFoundError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/f;->a:Ljava/lang/Error;

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/y/f;->a:Ljava/lang/Error;

    throw p1
.end method

.class public final Ln3/e/b/j1/t1/c/h$c;
.super Ln3/e/b/j1/t1/c/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/t1/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/e/b/j1/t1/c/h<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final b:Ln3/e/b/j1/t1/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/t1/c/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/e/b/j1/t1/c/h$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/e/b/j1/t1/c/h$c;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ln3/e/b/j1/t1/c/h$c;->b:Ln3/e/b/j1/t1/c/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/t1/c/h;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/j1/t1/c/h$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/c/h$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status=SUCCESS, result=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/e/b/j1/t1/c/h$c;->a:Ljava/lang/Object;

    const-string v2, "]]"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

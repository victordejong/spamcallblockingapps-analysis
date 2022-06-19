.class public interface abstract Ln3/e/b/j1/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/i1;


# static fields
.field public static final a:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const/4 v2, 0x0

    const-string v3, "camerax.core.imageInput.inputFormat"

    invoke-direct {v1, v3, v0, v2}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/j1/o0;->a:Ln3/e/b/j1/j0$a;

    return-void
.end method


# virtual methods
.method public abstract h()I
.end method

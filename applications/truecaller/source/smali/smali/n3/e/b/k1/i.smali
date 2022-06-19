.class public interface abstract Ln3/e/b/k1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/i1;


# static fields
.field public static final p:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/g1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ln3/e/b/g1$a;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const/4 v2, 0x0

    const-string v3, "camerax.core.useCaseEventCallback"

    invoke-direct {v1, v3, v0, v2}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/k1/i;->p:Ln3/e/b/j1/j0$a;

    return-void
.end method


# virtual methods
.method public abstract u(Ln3/e/b/g1$a;)Ln3/e/b/g1$a;
.end method

.class public abstract Ls1/a/a/a/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/k0;

.field public final synthetic b:Ls1/a/a/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/n$a;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "moduleData"

    const-string v4, "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/n$a;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/n$a;->b:Ls1/a/a/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ls1/a/a/a/n$a$a;

    invoke-direct {p1, p0}, Ls1/a/a/a/n$a$a;-><init>(Ls1/a/a/a/n$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/n$a;->a:Ls1/a/a/a/k0;

    return-void
.end method

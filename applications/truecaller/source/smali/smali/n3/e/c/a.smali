.class public final synthetic Ln3/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# static fields
.field public static final synthetic a:Ln3/e/c/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/e/c/a;

    invoke-direct {v0}, Ln3/e/c/a;-><init>()V

    sput-object v0, Ln3/e/c/a;->a:Ln3/e/c/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ln3/e/b/p0;

    .line 1
    sget-object v0, Ln3/e/c/c;->c:Ln3/e/c/c;

    .line 2
    iput-object p1, v0, Ln3/e/c/c;->b:Ln3/e/b/p0;

    return-object v0
.end method

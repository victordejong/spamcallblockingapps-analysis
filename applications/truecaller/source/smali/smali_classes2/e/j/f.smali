.class public final synthetic Le/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Le/j/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/j/f;

    invoke-direct {v0}, Le/j/f;-><init>()V

    sput-object v0, Le/j/f;->a:Le/j/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Le/j/f0;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    sget-object p1, Lcom/facebook/internal/a0$b;->s:Lcom/facebook/internal/a0$b;

    sget-object v0, Lcom/facebook/internal/u0/b;->a:Lcom/facebook/internal/u0/b;

    invoke-static {p1, v0}, Lcom/facebook/internal/a0;->a(Lcom/facebook/internal/a0$b;Lcom/facebook/internal/a0$a;)V

    .line 4
    sget-object p1, Lcom/facebook/internal/a0$b;->v:Lcom/facebook/internal/a0$b;

    sget-object v0, Lcom/facebook/internal/u0/d;->a:Lcom/facebook/internal/u0/d;

    invoke-static {p1, v0}, Lcom/facebook/internal/a0;->a(Lcom/facebook/internal/a0$b;Lcom/facebook/internal/a0$a;)V

    .line 5
    sget-object p1, Lcom/facebook/internal/a0$b;->w:Lcom/facebook/internal/a0$b;

    sget-object v0, Lcom/facebook/internal/u0/c;->a:Lcom/facebook/internal/u0/c;

    invoke-static {p1, v0}, Lcom/facebook/internal/a0;->a(Lcom/facebook/internal/a0$b;Lcom/facebook/internal/a0$a;)V

    :cond_1
    :goto_0
    return-void
.end method

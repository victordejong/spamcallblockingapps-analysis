.class public final synthetic Le/j/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Le/j/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/j/l;

    invoke-direct {v0}, Le/j/l;-><init>()V

    sput-object v0, Le/j/l;->a:Le/j/l;

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

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Le/j/f0;->n:Z

    :cond_0
    return-void
.end method

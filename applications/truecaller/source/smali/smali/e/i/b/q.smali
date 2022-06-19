.class public final synthetic Le/i/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# static fields
.field public static final synthetic a:Le/i/b/q;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/i/b/q;

    invoke-direct {v0}, Le/i/b/q;-><init>()V

    sput-object v0, Le/i/b/q;->a:Le/i/b/q;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    .line 2
    new-instance v1, Le/i/b/s2/e;

    invoke-direct {v1}, Le/i/b/s2/e;-><init>()V

    .line 3
    iget-object v2, v0, Le/m/e/l;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Le/m/d/m/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/b;


# instance fields
.field public final synthetic a:Le/m/d/m/t;

.field public final synthetic b:Le/m/d/m/o;


# direct methods
.method public synthetic constructor <init>(Le/m/d/m/t;Le/m/d/m/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/m/d;->a:Le/m/d/m/t;

    iput-object p2, p0, Le/m/d/m/d;->b:Le/m/d/m/o;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/d/m/d;->a:Le/m/d/m/t;

    iget-object v1, p0, Le/m/d/m/d;->b:Le/m/d/m/o;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Le/m/d/m/o;->e:Le/m/d/m/r;

    .line 3
    new-instance v3, Le/m/d/m/g0;

    invoke-direct {v3, v1, v0}, Le/m/d/m/g0;-><init>(Le/m/d/m/o;Le/m/d/m/p;)V

    .line 4
    invoke-interface {v2, v3}, Le/m/d/m/r;->create(Le/m/d/m/p;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

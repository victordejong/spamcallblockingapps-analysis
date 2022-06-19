.class public final synthetic Le/m/d/m/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/a$a;


# instance fields
.field public final synthetic a:Le/m/d/v/a$a;

.field public final synthetic b:Le/m/d/v/a$a;


# direct methods
.method public synthetic constructor <init>(Le/m/d/v/a$a;Le/m/d/v/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/m/m;->a:Le/m/d/v/a$a;

    iput-object p2, p0, Le/m/d/m/m;->b:Le/m/d/v/a$a;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/v/b;)V
    .locals 2

    iget-object v0, p0, Le/m/d/m/m;->a:Le/m/d/v/a$a;

    iget-object v1, p0, Le/m/d/m/m;->b:Le/m/d/v/a$a;

    .line 1
    invoke-interface {v0, p1}, Le/m/d/v/a$a;->a(Le/m/d/v/b;)V

    .line 2
    invoke-interface {v1, p1}, Le/m/d/v/a$a;->a(Le/m/d/v/b;)V

    return-void
.end method

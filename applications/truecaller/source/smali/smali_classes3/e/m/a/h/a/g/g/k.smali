.class public final synthetic Le/m/a/h/a/g/g/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/a;

.field public final synthetic b:Le/m/a/h/a/g/d;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/a;Le/m/a/h/a/g/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/k;->a:Le/m/a/h/a/g/g/a;

    iput-object p2, p0, Le/m/a/h/a/g/g/k;->b:Le/m/a/h/a/g/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/g/g/k;->a:Le/m/a/h/a/g/g/a;

    iget-object v1, p0, Le/m/a/h/a/g/g/k;->b:Le/m/a/h/a/g/d;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/g/g/a;->f:Le/m/a/h/a/d/f;

    .line 2
    invoke-virtual {v2, v1}, Le/m/a/h/a/d/f;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Le/m/a/h/a/g/g/a;->g:Le/m/a/h/a/d/f;

    .line 3
    invoke-virtual {v0, v1}, Le/m/a/h/a/d/f;->a(Ljava/lang/Object;)V

    return-void
.end method

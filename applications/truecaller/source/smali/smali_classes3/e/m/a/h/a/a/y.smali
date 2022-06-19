.class public final synthetic Le/m/a/h/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/z;

.field public final synthetic b:Le/m/a/h/a/a/c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/z;Le/m/a/h/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/y;->a:Le/m/a/h/a/a/z;

    iput-object p2, p0, Le/m/a/h/a/a/y;->b:Le/m/a/h/a/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/y;->a:Le/m/a/h/a/a/z;

    iget-object v1, p0, Le/m/a/h/a/a/y;->b:Le/m/a/h/a/a/c;

    .line 1
    invoke-virtual {v0, v1}, Le/m/a/h/a/e/c;->c(Ljava/lang/Object;)V

    return-void
.end method

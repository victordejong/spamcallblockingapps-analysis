.class public final Le/m/a/h/a/f/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/f/a;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/a;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/p;->a:Le/m/a/h/a/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/f/p;->a:Le/m/a/h/a/f/a;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 2
    invoke-virtual {v0}, Le/m/a/h/a/f/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

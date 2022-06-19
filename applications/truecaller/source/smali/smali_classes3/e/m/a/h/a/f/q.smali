.class public final Le/m/a/h/a/f/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Le/m/a/h/a/f/a;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/a;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/q;->b:Le/m/a/h/a/f/a;

    iput-object p2, p0, Le/m/a/h/a/f/q;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/f/q;->b:Le/m/a/h/a/f/a;

    iget-object v1, p0, Le/m/a/h/a/f/q;->a:Ljava/util/Set;

    .line 1
    invoke-virtual {v0, v1}, Le/m/a/h/a/f/a;->b(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

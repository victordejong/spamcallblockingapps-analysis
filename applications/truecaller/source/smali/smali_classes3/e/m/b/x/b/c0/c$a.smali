.class public Le/m/b/x/b/c0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/b/x/b/c0/c;->e(Le/m/b/x/b/c0/c$c;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/b/x/b/c0/c$c;

.field public final synthetic b:Ljava/io/OutputStream;

.field public final synthetic c:Le/m/b/x/d/u;


# direct methods
.method public constructor <init>(Le/m/b/x/b/c0/c;Le/m/b/x/b/c0/c$c;Ljava/io/OutputStream;Le/m/b/x/d/u;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/b/x/b/c0/c$a;->a:Le/m/b/x/b/c0/c$c;

    iput-object p3, p0, Le/m/b/x/b/c0/c$a;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Le/m/b/x/b/c0/c$a;->c:Le/m/b/x/d/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/b/c0/c$a;->a:Le/m/b/x/b/c0/c$c;

    iget-object v1, p0, Le/m/b/x/b/c0/c$a;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Le/m/b/x/b/c0/c$a;->c:Le/m/b/x/d/u;

    check-cast v0, Le/m/b/x/b/c0/c$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v1}, Le/m/b/x/d/u;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

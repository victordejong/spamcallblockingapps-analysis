.class public final Le/i/b/i2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/i2/f;->a(Le/i/b/u2/p;Lcom/criteo/publisher/context/ContextData;Le/i/b/b3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/i/b/b3;


# direct methods
.method public constructor <init>(Le/i/b/b3;)V
    .locals 0

    iput-object p1, p0, Le/i/b/i2/f$a;->a:Le/i/b/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/i2/f$a;->a:Le/i/b/b3;

    invoke-virtual {v0}, Le/i/b/b3;->c()V

    return-void
.end method

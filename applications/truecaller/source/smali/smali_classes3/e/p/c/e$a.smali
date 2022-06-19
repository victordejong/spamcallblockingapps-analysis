.class public Le/p/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/c/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/p/c/e;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Le/p/c/e;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/p/c/e$a;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/p/c/e$a;->a:Z

    return-void
.end method

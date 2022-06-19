.class public interface abstract Landroidx/work/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/p$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/p$b$c;

.field public static final b:Landroidx/work/p$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/p$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/p$b$c;-><init>(Landroidx/work/p$a;)V

    sput-object v0, Landroidx/work/p;->a:Landroidx/work/p$b$c;

    .line 2
    new-instance v0, Landroidx/work/p$b$b;

    invoke-direct {v0, v1}, Landroidx/work/p$b$b;-><init>(Landroidx/work/p$a;)V

    sput-object v0, Landroidx/work/p;->b:Landroidx/work/p$b$b;

    return-void
.end method

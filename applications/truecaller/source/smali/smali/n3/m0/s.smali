.class public interface abstract Ln3/m0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/s$b;
    }
.end annotation


# static fields
.field public static final a:Ln3/m0/s$b$c;

.field public static final b:Ln3/m0/s$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/m0/s$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/m0/s$b$c;-><init>(Ln3/m0/s$a;)V

    sput-object v0, Ln3/m0/s;->a:Ln3/m0/s$b$c;

    .line 2
    new-instance v0, Ln3/m0/s$b$b;

    invoke-direct {v0, v1}, Ln3/m0/s$b$b;-><init>(Ln3/m0/s$a;)V

    sput-object v0, Ln3/m0/s;->b:Ln3/m0/s$b$b;

    return-void
.end method

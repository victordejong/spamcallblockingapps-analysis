.class public abstract Lcom/truecaller/data/entity/MessageType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/MessageType$Preset;,
        Lcom/truecaller/data/entity/MessageType$Custom;,
        Lcom/truecaller/data/entity/MessageType$Undefined;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/MessageType;->a:Ljava/lang/String;

    return-void
.end method

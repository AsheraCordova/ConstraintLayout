// start - imports

export const enum Carousel_touchUpMode {
immediateStop = "immediateStop",
carryVelocity = "carryVelocity",
}
export const enum Carousel_emptyViewsBehavior {
invisible = "invisible",
gone = "gone",
}	
import CommandAttr from '../../widget/CommandAttr';
import IWidget from '../../widget/IWidget';
import ILayoutParam from '../../widget/ILayoutParam';
import {plainToClass, Type, Exclude, Expose, Transform} from "class-transformer";
import 'babel-polyfill';
import {Gravity} from '../../widget/TypeConstants';
import {ITranform, TransformerFactory} from '../../widget/TransformerFactory';
import {Event} from '../../app/Event';
import {MotionEvent} from '../../app/MotionEvent';
import {DragEvent} from '../../app/DragEvent';
import {KeyEvent} from '../../app/KeyEvent';
import { ScopedObject } from '../../app/ScopedObject';
















export class CarouselImpl_transitionToIndex {
@Expose({ name: "index" })
index!:number;
@Expose({ name: "delay" })
delay!:number;
}










// end - imports
import {ViewImpl} from './ViewImpl';
export abstract class CarouselImpl<T> extends ViewImpl<T>{
	//start - body
	static initialize() {
    }	
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_firstView" })
	carousel_firstView!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_previousState" })
	carousel_previousState!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_nextState" })
	carousel_nextState!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_infinite" })
	carousel_infinite!:CommandAttr<boolean>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_forwardTransition" })
	carousel_forwardTransition!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_backwardTransition" })
	carousel_backwardTransition!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_touchUp_dampeningFactor" })
	carousel_touchUp_dampeningFactor!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_touchUpMode" })
	carousel_touchUpMode!:CommandAttr<Carousel_touchUpMode>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_touchUp_velocityThreshold" })
	carousel_touchUp_velocityThreshold!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "carousel_emptyViewsBehavior" })
	carousel_emptyViewsBehavior!:CommandAttr<Carousel_emptyViewsBehavior>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "constraint_referenced_ids" })
	constraint_referenced_ids!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "jumpToIndex" })
	jumpToIndex_!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "jumpTolast" })
	jumpTolast_!:CommandAttr<void>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "jumpToNext" })
	jumpToNext_!:CommandAttr<void>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "jumpToPrevious" })
	jumpToPrevious_!:CommandAttr<void>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "transitionToIndex" })
	transitionToIndex_!:CommandAttr<CarouselImpl_transitionToIndex>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "transitionToLast" })
	transitionToLast_!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "transitionToNext" })
	transitionToNext_!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "transitionToPrevious" })
	transitionToPrevious_!:CommandAttr<number>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "dataKey" })
	dataKey!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "childDataKey" })
	childDataKey!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "dataScopeKey" })
	dataScopeKey!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "childDataScopeKey" })
	childDataScopeKey!:CommandAttr<string>| undefined;
	@Type(() => CommandAttr)
	@Expose({ name: "onNewItem" })
	onNewItem!:CommandAttr<string>| undefined;

	@Exclude()
	protected thisPointer: T;	
	protected abstract getThisPointer(): T;
	reset() : T {	
		super.reset();
		this.carousel_firstView = undefined;
		this.carousel_previousState = undefined;
		this.carousel_nextState = undefined;
		this.carousel_infinite = undefined;
		this.carousel_forwardTransition = undefined;
		this.carousel_backwardTransition = undefined;
		this.carousel_touchUp_dampeningFactor = undefined;
		this.carousel_touchUpMode = undefined;
		this.carousel_touchUp_velocityThreshold = undefined;
		this.carousel_emptyViewsBehavior = undefined;
		this.constraint_referenced_ids = undefined;
		this.jumpToIndex_ = undefined;
		this.jumpTolast_ = undefined;
		this.jumpToNext_ = undefined;
		this.jumpToPrevious_ = undefined;
		this.transitionToIndex_ = undefined;
		this.transitionToLast_ = undefined;
		this.transitionToNext_ = undefined;
		this.transitionToPrevious_ = undefined;
		this.dataKey = undefined;
		this.childDataKey = undefined;
		this.dataScopeKey = undefined;
		this.childDataScopeKey = undefined;
		this.onNewItem = undefined;
		return this.thisPointer;
	}
	constructor(id: string, path: string[], event:  string) {
		super(id, path, event);
		this.thisPointer = this.getThisPointer();
	}
	

	public tryGetCarousel_firstView() : T {
		this.resetIfRequired();
		if (this.carousel_firstView == null || this.carousel_firstView == undefined) {
			this.carousel_firstView = new CommandAttr<string>()
		}
		
		this.carousel_firstView.setGetter(true);
		this.orderGet++;
		this.carousel_firstView.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_firstView() : string {
		if (this.carousel_firstView == null || this.carousel_firstView == undefined) {
			this.carousel_firstView = new CommandAttr<string>();
		}
		return this.carousel_firstView.getCommandReturnValue();
	}
	public setCarousel_firstView(value : string) : T {
		this.resetIfRequired();
		if (this.carousel_firstView == null || this.carousel_firstView == undefined) {
			this.carousel_firstView = new CommandAttr<string>();
		}
		
		this.carousel_firstView.setSetter(true);
		this.carousel_firstView.setValue(value);
		this.orderSet++;
		this.carousel_firstView.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_previousState() : T {
		this.resetIfRequired();
		if (this.carousel_previousState == null || this.carousel_previousState == undefined) {
			this.carousel_previousState = new CommandAttr<string>()
		}
		
		this.carousel_previousState.setGetter(true);
		this.orderGet++;
		this.carousel_previousState.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_previousState() : string {
		if (this.carousel_previousState == null || this.carousel_previousState == undefined) {
			this.carousel_previousState = new CommandAttr<string>();
		}
		return this.carousel_previousState.getCommandReturnValue();
	}
	public setCarousel_previousState(value : string) : T {
		this.resetIfRequired();
		if (this.carousel_previousState == null || this.carousel_previousState == undefined) {
			this.carousel_previousState = new CommandAttr<string>();
		}
		
		this.carousel_previousState.setSetter(true);
		this.carousel_previousState.setValue(value);
		this.orderSet++;
		this.carousel_previousState.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_nextState() : T {
		this.resetIfRequired();
		if (this.carousel_nextState == null || this.carousel_nextState == undefined) {
			this.carousel_nextState = new CommandAttr<string>()
		}
		
		this.carousel_nextState.setGetter(true);
		this.orderGet++;
		this.carousel_nextState.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_nextState() : string {
		if (this.carousel_nextState == null || this.carousel_nextState == undefined) {
			this.carousel_nextState = new CommandAttr<string>();
		}
		return this.carousel_nextState.getCommandReturnValue();
	}
	public setCarousel_nextState(value : string) : T {
		this.resetIfRequired();
		if (this.carousel_nextState == null || this.carousel_nextState == undefined) {
			this.carousel_nextState = new CommandAttr<string>();
		}
		
		this.carousel_nextState.setSetter(true);
		this.carousel_nextState.setValue(value);
		this.orderSet++;
		this.carousel_nextState.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_infinite() : T {
		this.resetIfRequired();
		if (this.carousel_infinite == null || this.carousel_infinite == undefined) {
			this.carousel_infinite = new CommandAttr<boolean>()
		}
		
		this.carousel_infinite.setGetter(true);
		this.orderGet++;
		this.carousel_infinite.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public isCarousel_infinite() : boolean {
		if (this.carousel_infinite == null || this.carousel_infinite == undefined) {
			this.carousel_infinite = new CommandAttr<boolean>();
		}
		return this.carousel_infinite.getCommandReturnValue();
	}
	public setCarousel_infinite(value : boolean) : T {
		this.resetIfRequired();
		if (this.carousel_infinite == null || this.carousel_infinite == undefined) {
			this.carousel_infinite = new CommandAttr<boolean>();
		}
		
		this.carousel_infinite.setSetter(true);
		this.carousel_infinite.setValue(value);
		this.orderSet++;
		this.carousel_infinite.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_forwardTransition() : T {
		this.resetIfRequired();
		if (this.carousel_forwardTransition == null || this.carousel_forwardTransition == undefined) {
			this.carousel_forwardTransition = new CommandAttr<string>()
		}
		
		this.carousel_forwardTransition.setGetter(true);
		this.orderGet++;
		this.carousel_forwardTransition.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_forwardTransition() : string {
		if (this.carousel_forwardTransition == null || this.carousel_forwardTransition == undefined) {
			this.carousel_forwardTransition = new CommandAttr<string>();
		}
		return this.carousel_forwardTransition.getCommandReturnValue();
	}
	public setCarousel_forwardTransition(value : string) : T {
		this.resetIfRequired();
		if (this.carousel_forwardTransition == null || this.carousel_forwardTransition == undefined) {
			this.carousel_forwardTransition = new CommandAttr<string>();
		}
		
		this.carousel_forwardTransition.setSetter(true);
		this.carousel_forwardTransition.setValue(value);
		this.orderSet++;
		this.carousel_forwardTransition.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_backwardTransition() : T {
		this.resetIfRequired();
		if (this.carousel_backwardTransition == null || this.carousel_backwardTransition == undefined) {
			this.carousel_backwardTransition = new CommandAttr<string>()
		}
		
		this.carousel_backwardTransition.setGetter(true);
		this.orderGet++;
		this.carousel_backwardTransition.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_backwardTransition() : string {
		if (this.carousel_backwardTransition == null || this.carousel_backwardTransition == undefined) {
			this.carousel_backwardTransition = new CommandAttr<string>();
		}
		return this.carousel_backwardTransition.getCommandReturnValue();
	}
	public setCarousel_backwardTransition(value : string) : T {
		this.resetIfRequired();
		if (this.carousel_backwardTransition == null || this.carousel_backwardTransition == undefined) {
			this.carousel_backwardTransition = new CommandAttr<string>();
		}
		
		this.carousel_backwardTransition.setSetter(true);
		this.carousel_backwardTransition.setValue(value);
		this.orderSet++;
		this.carousel_backwardTransition.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_touchUp_dampeningFactor() : T {
		this.resetIfRequired();
		if (this.carousel_touchUp_dampeningFactor == null || this.carousel_touchUp_dampeningFactor == undefined) {
			this.carousel_touchUp_dampeningFactor = new CommandAttr<number>()
		}
		
		this.carousel_touchUp_dampeningFactor.setGetter(true);
		this.orderGet++;
		this.carousel_touchUp_dampeningFactor.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_touchUp_dampeningFactor() : number {
		if (this.carousel_touchUp_dampeningFactor == null || this.carousel_touchUp_dampeningFactor == undefined) {
			this.carousel_touchUp_dampeningFactor = new CommandAttr<number>();
		}
		return this.carousel_touchUp_dampeningFactor.getCommandReturnValue();
	}
	public setCarousel_touchUp_dampeningFactor(value : number) : T {
		this.resetIfRequired();
		if (this.carousel_touchUp_dampeningFactor == null || this.carousel_touchUp_dampeningFactor == undefined) {
			this.carousel_touchUp_dampeningFactor = new CommandAttr<number>();
		}
		
		this.carousel_touchUp_dampeningFactor.setSetter(true);
		this.carousel_touchUp_dampeningFactor.setValue(value);
		this.orderSet++;
		this.carousel_touchUp_dampeningFactor.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_touchUpMode() : T {
		this.resetIfRequired();
		if (this.carousel_touchUpMode == null || this.carousel_touchUpMode == undefined) {
			this.carousel_touchUpMode = new CommandAttr<Carousel_touchUpMode>()
		}
		
		this.carousel_touchUpMode.setGetter(true);
		this.orderGet++;
		this.carousel_touchUpMode.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_touchUpMode() : Carousel_touchUpMode {
		if (this.carousel_touchUpMode == null || this.carousel_touchUpMode == undefined) {
			this.carousel_touchUpMode = new CommandAttr<Carousel_touchUpMode>();
		}
		return this.carousel_touchUpMode.getCommandReturnValue();
	}
	public setCarousel_touchUpMode(value : Carousel_touchUpMode) : T {
		this.resetIfRequired();
		if (this.carousel_touchUpMode == null || this.carousel_touchUpMode == undefined) {
			this.carousel_touchUpMode = new CommandAttr<Carousel_touchUpMode>();
		}
		
		this.carousel_touchUpMode.setSetter(true);
		this.carousel_touchUpMode.setValue(value);
		this.orderSet++;
		this.carousel_touchUpMode.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_touchUp_velocityThreshold() : T {
		this.resetIfRequired();
		if (this.carousel_touchUp_velocityThreshold == null || this.carousel_touchUp_velocityThreshold == undefined) {
			this.carousel_touchUp_velocityThreshold = new CommandAttr<number>()
		}
		
		this.carousel_touchUp_velocityThreshold.setGetter(true);
		this.orderGet++;
		this.carousel_touchUp_velocityThreshold.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_touchUp_velocityThreshold() : number {
		if (this.carousel_touchUp_velocityThreshold == null || this.carousel_touchUp_velocityThreshold == undefined) {
			this.carousel_touchUp_velocityThreshold = new CommandAttr<number>();
		}
		return this.carousel_touchUp_velocityThreshold.getCommandReturnValue();
	}
	public setCarousel_touchUp_velocityThreshold(value : number) : T {
		this.resetIfRequired();
		if (this.carousel_touchUp_velocityThreshold == null || this.carousel_touchUp_velocityThreshold == undefined) {
			this.carousel_touchUp_velocityThreshold = new CommandAttr<number>();
		}
		
		this.carousel_touchUp_velocityThreshold.setSetter(true);
		this.carousel_touchUp_velocityThreshold.setValue(value);
		this.orderSet++;
		this.carousel_touchUp_velocityThreshold.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetCarousel_emptyViewsBehavior() : T {
		this.resetIfRequired();
		if (this.carousel_emptyViewsBehavior == null || this.carousel_emptyViewsBehavior == undefined) {
			this.carousel_emptyViewsBehavior = new CommandAttr<Carousel_emptyViewsBehavior>()
		}
		
		this.carousel_emptyViewsBehavior.setGetter(true);
		this.orderGet++;
		this.carousel_emptyViewsBehavior.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getCarousel_emptyViewsBehavior() : Carousel_emptyViewsBehavior {
		if (this.carousel_emptyViewsBehavior == null || this.carousel_emptyViewsBehavior == undefined) {
			this.carousel_emptyViewsBehavior = new CommandAttr<Carousel_emptyViewsBehavior>();
		}
		return this.carousel_emptyViewsBehavior.getCommandReturnValue();
	}
	public setCarousel_emptyViewsBehavior(value : Carousel_emptyViewsBehavior) : T {
		this.resetIfRequired();
		if (this.carousel_emptyViewsBehavior == null || this.carousel_emptyViewsBehavior == undefined) {
			this.carousel_emptyViewsBehavior = new CommandAttr<Carousel_emptyViewsBehavior>();
		}
		
		this.carousel_emptyViewsBehavior.setSetter(true);
		this.carousel_emptyViewsBehavior.setValue(value);
		this.orderSet++;
		this.carousel_emptyViewsBehavior.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetConstraint_referenced_ids() : T {
		this.resetIfRequired();
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>()
		}
		
		this.constraint_referenced_ids.setGetter(true);
		this.orderGet++;
		this.constraint_referenced_ids.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getConstraint_referenced_ids() : string {
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>();
		}
		return this.constraint_referenced_ids.getCommandReturnValue();
	}
	public setConstraint_referenced_ids(value : string) : T {
		this.resetIfRequired();
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>();
		}
		
		this.constraint_referenced_ids.setSetter(true);
		this.constraint_referenced_ids.setValue(value);
		this.orderSet++;
		this.constraint_referenced_ids.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public jumpToIndex(value : number) : T {
		this.resetIfRequired();
		if (this.jumpToIndex_ == null || this.jumpToIndex_ == undefined) {
			this.jumpToIndex_ = new CommandAttr<number>();
		}
		
		this.jumpToIndex_.setSetter(true);
		this.jumpToIndex_.setValue(value);
		this.orderSet++;
		this.jumpToIndex_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public jumpTolast() : T {
		this.resetIfRequired();
		if (this.jumpTolast_ == null || this.jumpTolast_ == undefined) {
			this.jumpTolast_ = new CommandAttr<void>();
		}
		
		this.jumpTolast_.setSetter(true);
		
		this.orderSet++;
		this.jumpTolast_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public jumpToNext() : T {
		this.resetIfRequired();
		if (this.jumpToNext_ == null || this.jumpToNext_ == undefined) {
			this.jumpToNext_ = new CommandAttr<void>();
		}
		
		this.jumpToNext_.setSetter(true);
		
		this.orderSet++;
		this.jumpToNext_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public jumpToPrevious() : T {
		this.resetIfRequired();
		if (this.jumpToPrevious_ == null || this.jumpToPrevious_ == undefined) {
			this.jumpToPrevious_ = new CommandAttr<void>();
		}
		
		this.jumpToPrevious_.setSetter(true);
		
		this.orderSet++;
		this.jumpToPrevious_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public transitionToIndex(index : number,
delay : number) : T {
		this.resetIfRequired();
		if (this.transitionToIndex_ == null || this.transitionToIndex_ == undefined) {
			this.transitionToIndex_ = new CommandAttr<CarouselImpl_transitionToIndex>();
		}
		
		let wrapper:CarouselImpl_transitionToIndex = new CarouselImpl_transitionToIndex();
		wrapper.index = index;
		wrapper.delay = delay;
		this.transitionToIndex_.setSetter(true);
		this.transitionToIndex_.setValue(wrapper);	
		this.orderSet++;
		this.transitionToIndex_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public transitionToLast(value : number) : T {
		this.resetIfRequired();
		if (this.transitionToLast_ == null || this.transitionToLast_ == undefined) {
			this.transitionToLast_ = new CommandAttr<number>();
		}
		
		this.transitionToLast_.setSetter(true);
		this.transitionToLast_.setValue(value);
		this.orderSet++;
		this.transitionToLast_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public transitionToNext(value : number) : T {
		this.resetIfRequired();
		if (this.transitionToNext_ == null || this.transitionToNext_ == undefined) {
			this.transitionToNext_ = new CommandAttr<number>();
		}
		
		this.transitionToNext_.setSetter(true);
		this.transitionToNext_.setValue(value);
		this.orderSet++;
		this.transitionToNext_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public transitionToPrevious(value : number) : T {
		this.resetIfRequired();
		if (this.transitionToPrevious_ == null || this.transitionToPrevious_ == undefined) {
			this.transitionToPrevious_ = new CommandAttr<number>();
		}
		
		this.transitionToPrevious_.setSetter(true);
		this.transitionToPrevious_.setValue(value);
		this.orderSet++;
		this.transitionToPrevious_.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public setDataKey(value : string) : T {
		this.resetIfRequired();
		if (this.dataKey == null || this.dataKey == undefined) {
			this.dataKey = new CommandAttr<string>();
		}
		
		this.dataKey.setSetter(true);
		this.dataKey.setValue(value);
		this.orderSet++;
		this.dataKey.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public setChildDataKey(value : string) : T {
		this.resetIfRequired();
		if (this.childDataKey == null || this.childDataKey == undefined) {
			this.childDataKey = new CommandAttr<string>();
		}
		
		this.childDataKey.setSetter(true);
		this.childDataKey.setValue(value);
		this.orderSet++;
		this.childDataKey.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public setDataScopeKey(value : string) : T {
		this.resetIfRequired();
		if (this.dataScopeKey == null || this.dataScopeKey == undefined) {
			this.dataScopeKey = new CommandAttr<string>();
		}
		
		this.dataScopeKey.setSetter(true);
		this.dataScopeKey.setValue(value);
		this.orderSet++;
		this.dataScopeKey.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public setChildDataScopeKey(value : string) : T {
		this.resetIfRequired();
		if (this.childDataScopeKey == null || this.childDataScopeKey == undefined) {
			this.childDataScopeKey = new CommandAttr<string>();
		}
		
		this.childDataScopeKey.setSetter(true);
		this.childDataScopeKey.setValue(value);
		this.orderSet++;
		this.childDataScopeKey.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public setOnNewItem(value : string) : T {
		this.resetIfRequired();
		if (this.onNewItem == null || this.onNewItem == undefined) {
			this.onNewItem = new CommandAttr<string>();
		}
		
		this.onNewItem.setSetter(true);
		this.onNewItem.setValue(value);
		this.orderSet++;
		this.onNewItem.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		
	//end - body

}
	
//start - staticinit

export class Carousel extends CarouselImpl<Carousel> implements IWidget{
    getThisPointer(): Carousel {
        return this;
    }
    
   	public getClass() {
		return Carousel;
	}
	
   	constructor(id: string, path: string[], event: string) {
		super(id, path, event);	
	}
}

CarouselImpl.initialize();
export interface OnNewItemEvent extends Event{
	        index:number;

}

//end - staticinit
